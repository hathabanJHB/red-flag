import json
import firebase_admin
from firebase_admin import db
from firebase_admin import credentials, initialize_app, storage
import jwt
from cryptography.hazmat.primitives import serialization

# Init firebase with your credentials
# databaseURL = "https://red-flag-e4d4a-default-rtdb.firebaseio.com/"
# storageBuscket =  'red-flag-e4d4a.appspot.com'
# cred = credentials.Certificate("red-flag.json")
# initialize_app(cred, {'storageBucket': storageBuscket
#                     ,'databaseURL':databaseURL})

# # Put your local file path 
# fileName = "pic.jpg"
# bucket = storage.bucket()
# blob = bucket.blob(fileName.split(".")[0]+"/"+fileName)
# blob.upload_from_filename(fileName)



# print("your file url", blob.public_url)

# cred_obj = firebase_admin.credentials.Certificate('red-flag.json')
# default_app = firebase_admin.initialize_app(cred, {
	# 'databaseURL':databaseURL
# 	})


# hurters = {
# 	"name" : "",
# 	"location" : (),
# 	"image" : ""
# }


# ref = db.reference("/checked")
# dummies = ref.child("")
# file_contents = {"Dummpy":{"name":"Lwa", "no": 123445}}

# ref.push(file_contents)



# from firebase import firebase
# firebase = firebase.FirebaseApplication('https://red-flag-e4d4a.firebaseio.com', None)
# result = firebase.get('/', "dummy")
# # print (result)
# # {'1': 'John Doe', '2': 'Jane Doe'}




data = {
	"sender" : "username",
	"reciever" : "Full name",
}

key = "you cant go wrong"

token = jwt.encode(
	payload = data,
	key=key
)
res =jwt.decode(token, key=key, algorithms=['HS256', ])

print(res)