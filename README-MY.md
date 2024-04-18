# 05-EJS-Template-Engine-Part-4  
- Date: 13-apr-2024
- Author: Dhandrohith
## Part-3
[Part-3](https://youtu.be/8hKzDEZ_2_o?list=PLGg1nRFYmF5hgOx9QBBXPJW-dN54SybVr&t=75)
### Installation
- create folder 04-Cookie-Session-Part-3
- go to terminal
    - cd 05-EJS-Template-Engine-Part-4
    - $ npm install nodejs --save
    - $ npm i express --save
    - $ npm i -g nodemon --save
    - $ npm install body-parser
    - $ npm i cookie-parser --save
    - $ npm i cookie-session --save
    - $ npm install ejs

    - $ create folder views
        - $ create file showdepts.ejs
            - write basic html and body tags
            - go to google
                - bootstrap5/quick starat/css
                    - copy the css link
                        - <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
                        
    - $ create folder express
    - $ create file test-server.js

### Writing the code
- open test-server.js file and edit as required
- run the pgm
    - on terminal
        - $ cd express
        - $ nodemon test-server.js
            - This shows:

                ```` Server started and listning on port 3000} ````
<!-- - see on webpage: Go to this link
    - [localhost](http://localhost:3000/getdepts)
    - type /getdepts at the end and press enter. Result will be:

        ```` [{"id":1,"dname":"Leagal"},{"id":2,"dname":"Tech"}] ```` -->
- To check in postman:
    - open postman desktop
        - create new workspace 
            - 04-Cookie-Session-Part-3 
          - create new Post request and press send botton
            - http://localhost:3000/createsession
        - You get:
        ```` "result": "Session Created" ````

          - create new Post request and press send botton
            - http://localhost:3000/logout
        - You get:
        ```` "result": "Loged Out" ````

          - create new Get request and press send botton
            - http://localhost:3000/getdepts
        - You get:
        ```` "result": "User not logged in!" ````

        - Now create session again and then run abaove option and see what happen
        - You get:
        ```` [
    {
        "id": 1,
        "dname": "Leagal"
    },
    {
        "id": 2,
        "dname": "Tech"
    }
] ````
] ````





