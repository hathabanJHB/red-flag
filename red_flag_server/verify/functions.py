import face_recognition
from firebase_admin import credentials, initialize_app, storage
from firebase_admin import db
import jwt
import os
class Processor:
    
    
    
    
    databaseURL = "https://red-flag-e4d4a-default-rtdb.firebaseio.com/"
    storageBuscket =  'red-flag-e4d4a.appspot.com'
    cred = credentials.Certificate("../red-flag.json")
    initialize_app(cred, {'storageBucket': storageBuscket
                        ,'databaseURL':databaseURL})
    
    
    def alike_images(known_image, unknown_image):
        
        """[Compares two image by comparing their encoding]

        Args:
            known_image ([type]): [This image was sent to the user who requested verification]
            unknown_image ([type]): [This image comes from the person who is being verified]

        Returns:
            [boolean]]: [If the images are closely related it returns true else false.]
        """
        
        known_image = face_recognition.load_image_file(known_image)
        unknown_image = face_recognition.load_image_file(unknown_image)

        known_encoding = face_recognition.face_encodings(known_image)[0]
        unknown_encoding = face_recognition.face_encodings(unknown_image)[0]

        results = face_recognition.compare_faces([known_image], unknown_encoding)
        return results
    
    def generate_token(data, key):
        
        token = jwt.encode(
            payload = data,
            key=key
            )
        data = {
            "verification_token" : token,
        }
        return data


    def  download_photo(request):
        
        
        file = request.data.get('file')
        sender_uid = request.data.get('sender_uid')
        filename = str(file)
        f = sender_uid+"/"+ filename
        

            
        with open( filename, 'wb+') as destination:
            for chunk in file.chunks():
                destination.write(chunk)
            destination.close()
        return f

    def upload_photo(fileName):
        sender_uid = fileName.split("/")[0]
        file = fileName.split("/")[1]
        
        bucket = storage.bucket()
        blob = bucket.blob(fileName)
        blob.upload_from_filename(file)
        os.remove(file)
        
        
    def data_upload(data):
        ref = db.reference("/recievers")
        # dummies = ref.child("/")
        file_contents = data

        ref.push(file_contents)

        