**Create Product**
----
  Updates a product. Only users that are admins are authorized.

* **URL**

  /products/:id

* **Method:**

  `PATCH` OR `PUT`
  
*  **URL Params**

   **Required:**
 
   `id=[integer]`

  **Optional:**
 
   `name=[string]`
   `stock=[integer]`
   `price=[string]`
   

* **Data Params**

  Authorization => 'auth_token'

* **Success Response:**

  * **Code:** 201 <br />
    **Content:** `{ {
                    "id": 32,
                    "name": "Frutsi",
                    "stock": 11,
                    "price": "0.32",
                    "created_at": "2017-04-09T22:07:43.036Z",
                    "updated_at": "2017-04-11T02:35:47.374Z"
                    }
                  }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : ""message": "Couldn't find Product with 'id'=100"" }`

* **Notes:**

  <_Changes to the products' prices are logged in the audits table._> 

