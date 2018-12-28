**Log in**
----
  Returns JWT when a user logs in.

* **URL**

  /oauth/token

* **Method:**

  `POST`
  
*  **URL Params**

   **Required:**
 
   `email=[string]`
   `password=[string]`
   `grant_type=[string]`

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ auth_token : "ljasdklajsldkjalskdjalskdjalskjd alsjlaksjdalskjdapsodasidqp" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "Invalid Credentials" }`