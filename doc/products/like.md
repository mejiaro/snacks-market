**Create Product**
----
  Likes a product.

* **URL**

  /products/:id/like

* **Method:**

  `POST`
  
*  **URL Params**

   **Required:**
 
   `id=[integer]`   

* **Data Params**

  Authorization => 'auth_token'

* **Success Response:**

  * **Code:** 201 <br />
    **Content:** `{{
                      "id": 99,
                      "product_id": 41,
                      "user_id": 11,
                      "created_at": "2017-04-11T15:00:22.708Z",
                      "updated_at": "2017-04-11T15:00:22.708Z"
                    }
                  }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : ""message": "Couldn't find Product with 'id'=100"" }`

  OR

  * **Code:** 422  <br />
    **Content:** `{ {
                      "message": "Validation failed: Product has been liked."
                    } }`

