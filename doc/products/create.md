**Create Product**
----
  Creates a product. Only users that are admins are authorized.

* **URL**

  /products

* **Method:**

  `POST`
  
*  **URL Params**

   **Required:**
 
   `name=[string]`
   `stock=[integer]`
   `price=[string]`
   `image=[file]`
   

* **Data Params**

  Authorization => 'auth_token'

* **Success Response:**

  * **Code:** 201 <br />
    **Content:** `{ {
                      "id": 34,
                      "name": "Churrito",
                      "price": "0.2",
                      "stock": 16,
                      "created_at": "2017-04-11T02:26:20.598Z",
                      "updated_at": "2017-04-11T02:26:20.598Z"
                    }
                  }`
 
* **Error Response:**

  * **Code:** 422  <br />
    **Content:** `{ { "message": "Validation failed: 'attribute' can't be blank" } }`

