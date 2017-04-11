**Search Product**
----
  Search product list. Accesible to users, admins and 3rd parties.

* **URL**

  /products/search

* **Method:**

  `GET`
  
*  **URL Params**

  **Required:**
 
   `name=[string]`

  **Optional:**
 
   `page=[integer]`
   

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ ...
                    {
                      "id": 33,
                      "name": "Frutsi",
                      "price": "0.15",
                      "stock": 13,
                      "created_at": "2017-04-10T02:26:20.598Z",
                      "updated_at": "2017-04-10T02:26:20.598Z"
                    },
                    {
                      "id": 34,
                      "name": "Frutsi",
                      "price": "0.2",
                      "stock": 16,
                      "created_at": "2017-04-11T02:26:20.598Z",
                      "updated_at": "2017-04-11T02:26:20.598Z"
                    },
                    ...
                  }`
