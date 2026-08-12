\# HTTP Request/Response Log



\## Request 1 — GET /posts/1



\### Request

GET /posts/1 HTTP/1.1

Host: jsonplaceholder.typicode.com



Command:

curl.exe -i https://jsonplaceholder.typicode.com/posts/1



\### Response

HTTP/1.1 200 OK

Content-Type: application/json; charset=utf-8

Content-Length: 292



{

&#x20; "userId": 1,

&#x20; "id": 1,

&#x20; "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",

&#x20; "body": "quia et suscipit\\nsuscipit recusandae consequuntur expedita et cum\\nreprehenderit molestiae ut ut quas totam\\nnostrum rerum est autem sunt rem eveniet architecto"

}



\### Note

200 OK means the request succeeded and the requested resource was found. The Content-Type `application/json` means the response body is JSON data.







\## Request 2 — GET /users/1



\### Request

GET /users/1 HTTP/1.1

Host: jsonplaceholder.typicode.com



Command:

curl.exe -i https://jsonplaceholder.typicode.com/users/1



\### Response

HTTP/1.1 200 OK

Content-Type: application/json; charset=utf-8

Content-Length: 509



{

&#x20; "id": 1,

&#x20; "name": "Leanne Graham",

&#x20; "username": "Bret",

&#x20; "email": "Sincere@april.biz",

&#x20; "address": {

&#x20;   "street": "Kulas Light",

&#x20;   "suite": "Apt. 556",

&#x20;   "city": "Gwenborough",

&#x20;   "zipcode": "92998-3874",

&#x20;   "geo": {

&#x20;     "lat": "-37.3159",

&#x20;     "lng": "81.1496"

&#x20;   }

&#x20; },

&#x20; "phone": "1-770-736-8031 x56442",

&#x20; "website": "hildegard.org",

&#x20; "company": {

&#x20;   "name": "Romaguera-Crona",

&#x20;   "catchPhrase": "Multi-layered client-server neural-net",

&#x20;   "bs": "harness real-time e-markets"

&#x20; }

}



\### Note

200 OK means the request succeeded and the requested resource was found. The Content-Type `application/json` means the response body is JSON data.







\## Request 3 — GET /todos/1



\### Request

GET /todos/1 HTTP/1.1

Host: jsonplaceholder.typicode.com



Command:

curl.exe -i https://jsonplaceholder.typicode.com/todos/1



\### Response

HTTP/1.1 200 OK

Content-Type: application/json; charset=utf-8

Content-Length: 83



{

&#x20; "userId": 1,

&#x20; "id": 1,

&#x20; "title": "delectus aut autem",

&#x20; "completed": false

}



\### Note

200 OK means the request succeeded and the requested resource was found. The Content-Type `application/json` means the response body is JSON data.









\## Request 4 — GET /comments/1



\### Request

GET /comments/1 HTTP/1.1

Host: jsonplaceholder.typicode.com



Command:

curl.exe -i https://jsonplaceholder.typicode.com/comments/1



\### Response

HTTP/1.1 200 OK

Content-Type: application/json; charset=utf-8

Content-Length: 268



{

&#x20; "postId": 1,

&#x20; "id": 1,

&#x20; "name": "id labore ex et quam laborum",

&#x20; "email": "Eliseo@gardner.biz",

&#x20; "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\\ntempora quo necessitatibus\\ndolor quam autem quasi\\nreiciendis et nam sapiente accusantium"

}



\### Note

200 OK means the request succeeded and the requested resource was found. The Content-Type `application/json` means the response body is JSON data.









\## Request 5 — GET /posts/99999 — Deliberate 404



\### Request

GET /posts/99999 HTTP/1.1

Host: jsonplaceholder.typicode.com



Command:

curl.exe -i https://jsonplaceholder.typicode.com/posts/99999



\### Response

HTTP/1.1 404 Not Found

Content-Type: application/json; charset=utf-8

Content-Length: 2



{}



\### Note

404 Not Found means the server could not find the requested resource. The Content-Type `application/json` means the response body is JSON data.

