**Create Order (purchase)**
----
  Buys a product

* **URL**

  /orders

* **Method:**

  `POST`
  
*  **URL Params**

   **Required:**
 
   `product_id=[integer]`
   

* **Data Params**

  Authorization => 'auth_token'

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ "id": 8,
                    "created_at": "2017-04-11T02:17:05.442Z",
                    "product": {
                      "id": 32,
                      "name": "Intelligent Plastic Keyboard",
                      "price": "0.32"
                    } 
                  }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : ""message": "Couldn't find Product with 'id'=100"" }`

  OR

  * **Code:** 500  <br />
    **Content:** `{ "orders": ["Product is out of stock"] }`

