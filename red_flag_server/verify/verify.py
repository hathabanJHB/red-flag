
from rest_framework import status
from rest_framework.authtoken.models import Token
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.status import HTTP_200_OK, HTTP_201_CREATED, HTTP_400_BAD_REQUEST, HTTP_500_INTERNAL_SERVER_ERROR
from rest_framework.views import APIView
from django.core.files.storage import default_storage

from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login
import requests
from firebase_admin import credentials, initialize_app, storage
from firebase_admin import db

import jwt

from verify.functions import Processor
key = "dont mess around"
# Init firebase with your credentials

class Verify(APIView):
    
    # permission_classes = [IsAuthenticated]
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    err = Response(data={"message": "Data provided is not  valid.)"}, status=HTTP_400_BAD_REQUEST)

    def get(self, request):
        
        """[Start Verification]

        Args:
            request ([Http request]): [contains request.data about the person to be verified]

        Returns:
            [Responce]: [Responsee with data as message  and status code]
        """
        
        try:
            data = {"sender_uid": request.data.get("sender_uid")
            , "reciever_name": request.data.get("reciever_name")}
            
            
            photo = Processor.download_photo(request)
            data["file"] = photo
            data= Processor.generate_token(data, key)
            # # I have path to the local image
            
            
            
            # #______________________________-
            Processor.data_upload(data)
            Processor.upload_photo(photo)
            
            return Response(data=data)
            # return Processor.verify(self, request)
        except: return self.err

    def post(self, request):
        
        """[Start Verification]

        Args:
            request ([Http request]): [contains request.data about the person to be verified]

        Returns:
            [Responce]: [Responsee with data as message  and status code]
        """
        
        try:
            data = {"reciever_uid": request.data.get("reciever_uid")
            , "token": request.data.get("token"),
            # "location": request.data.get("location")
            }
            
            
            reciever_photo = Processor.download_photo(request)
            token_data = jwt.decode(data["token"], key=key, algorithms=['HS256', ])
            storage.child(token_data['file']).download(token_data['file'])

            same = Processor.alike_images(token_data['file'], request.data.get("file"))
            
            
            if same:
                Processor.data_upload(data)
                Processor.upload_photo(reciever_photo)
            
            return Response(data=data)
            # return Processor.verify(self, request)
        except: return self.err


