**Delete Product**
----
  Deletes a product. Only users that are admins are authorized.

* **URL**

  /products/:id

* **Method:**

  `DELETE`
  
*  **URL Params**

   **Required:**
 
   `id=[integer]` 

* **Data Params**

  Authorization => 'auth_token'

* **Success Response:**

  * **Code:** 204 <br />
    **Content:** `{ []
                  }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : ""message": "Couldn't find Product with 'id'=100"" }`

* **Notes:**

  <Deleting a product does not delete the associated orders.> 

