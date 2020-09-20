from flask import Flask
from flask import request
import jwt
import csv
import json
import time

app = Flask(__name__)
# app.secret_key = "secret key"


groceries_master = {}

@app.route("/")
def hello():
    return "Movie Operation"

@app.route("/login", methods=['POST'])
def login():
    username = request.json['username']
    password = request.json['password']
    f_hand = open('data/users.csv', 'r')
    csv_reader = csv.DictReader(f_hand) 
    flag = False
    for row in csv_reader:
        if row['username'] == username:
            if row['password'] == password:
                flag = True
                break
    f_hand.close()
    if flag == True:
        payload = {'username': username, 'message':'logge_in','expire':time.time()+60*60} 
        key = 'loginkey'
        encode_jwt = jwt.encode(payload,key)
        return{'aut_token':encode_jwt.decode(),'message':'logge_in'}
    else:
        return{'message':'username or password wrong'}

@app.route("/auth_check", methods=['POST'])
def auth_check():
    auth_token = request.json['auth_token']
    key = 'loginkey'
    data = jwt.decode(auth_token, key)
    if  data['expire'] >= time.time():
        return json.dumps({'message':'token_valid'})
    else:
        return json.dumps({'message':'token_not_valid'})
# {"username":"Shalu","password":"shalu@123"}



@app.route('/users/register', methods=['POST'])
def register():
    auth_token = request.json['auth_token']
    key = 'loginkey'
    data = jwt.decode(auth_token, key)
    if  data['expire'] >= time.time():
        user_name = request.json['username']
        email = request.json['email']
        password = request.json['password']
        contact_number = request.json['contact_number']
        address = request.json['address']
        new_user = True
        with open('data/users.csv','r') as csv_file:
            csv_reader = csv.DictReader(csv_file)
            for row in csv_reader:
                if row['email'] == email:
                    new_user = False
                    break
        if new_user:
            user_list = {}
            with open('data/users.csv','r') as users_file:
                csv_reader = csv.reader(users_file)
                data = list(csv_reader)
            u_id = data[-1][0]
            user_list['id'] = int(u_id) + 1
            user_list['username'] = user_name
            user_list['email'] = email
            user_list['password'] = password
            user_list['contact_number'] = contact_number
            user_list['address'] = address
            with open('data/users.csv','a') as users_file2:
                headers = ['id','username','email','password','contact_number','address']
                csv_writer = csv.DictWriter(users_file2,fieldnames=headers)
                csv_writer.writerow(user_list)
            return json.dumps({"message":"User Added Successfully"})
        else:
            return json.dumps({"message":"User name already exists!"})
    else:
        return json.dumps({'message':'token_not_valid'})

@app.route('/user/modify',methods=['PATCH'])
def modify_user():
    auth_token = request.json['auth_token']
    key = 'loginkey'
    data = jwt.decode(auth_token, key)
    if  data['expire'] >= time.time():
        user_id = request.json['id']
        password = request.json['password']
        with open('data/users.csv','r') as users_file:
            csv_reader = csv.reader(users_file)
            data = list(csv_reader)
            for i in range(len(data)):
                if data[i][0] == user_id:
                    data[i][0] = user_id
                    # data[i][3] = request.json['password']
                    data[i][3] = password
        with open('data/users.csv','w') as csv_file:
            csv_writer =  csv.writer(csv_file)
            csv_writer.writerows(data)
        return json.dumps({"message":"Password Updated Succesfully"})
    else:
        return json.dumps({'message':'token_not_valid'})

@app.route('/users/view',methods=['GET'])
def view_users():
    user_list = []
    with open('data/users.csv','r') as users_file:
        csv_reader = csv.DictReader(users_file)
        for row in csv_reader:
            user_list.append(row)
        return json.dumps({"users":user_list})

@app.route('/user/delete/<user_id>',methods=['DELETE'])
def delete_user(user_id):
    new_list = []
    with open('data/users.csv','r') as csv_file:
        csv_reader = csv.reader(csv_file)
        lines = list(csv_reader)
        for i in range(len(lines)):
            if i != int(user_id):
                new_list.append(lines[i])
    with open('data/users.csv','w') as csv_file2:
        csv_writer = csv.writer(csv_file2)
        csv_writer.writerows(new_list)
    return json.dumps({"message":"User Deleted Successfully!"})

