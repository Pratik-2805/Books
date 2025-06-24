# Bookstore Django Project

A web application for managing and reviewing books, built with Django and Django REST Framework.

## Features
- User registration and authentication (with JWT support)
- Add, list, and search books
- Book reviews and ratings
- Image upload for books
- Pagination and filtering

## Setup Instructions

### 1. Clone the Repository
```bash
# Clone this repository and navigate into the project directory
$ git clone <your-repo-url>
$ cd Book
```

### 2. Create and Activate a Virtual Environment
```bash
# On Windows
$ python -m venv myenv
$ myenv\Scripts\activate

# On macOS/Linux
$ python3 -m venv myenv
$ source myenv/bin/activate
```

### 3. Install Dependencies
```bash
$ pip install -r requirements.txt
```

### 4. Apply Migrations
```bash
$ cd bookstore
$ python manage.py makemigrations
$ python manage.py migrate
```

### 5. Create a Superuser (Admin)
```bash
$ python manage.py createsuperuser
```

### 6. Run the Development Server
```bash
$ python manage.py runserver
```

Visit [http://127.0.0.1:8000/](http://127.0.0.1:8000/) in your browser.

## API Usage
- The project uses JWT authentication for API endpoints.
- Obtain a token by logging in via the API or the provided login form.
- Use the token in the `Authorization` header as `Bearer <your_token>` for protected endpoints.

### Token Expiry and Refresh
- **Access tokens have a limited lifetime.**
- If your token expires, you will receive a 401 Unauthorized error.
- To continue using the API, use your refresh token to obtain a new access token by making a POST request to `/api/token/refresh/` with your refresh token.
- If both tokens are expired, you must log in again to obtain new tokens.

## Media & Static Files
- Uploaded book images are stored in the `media/book_images/` directory.
- During development, Django serves media files automatically.

## Admin Panel
- Access the Django admin at `/admin/` using your superuser credentials.

## Notes
- Make sure to activate your virtual environment before running any management commands.
- For production, set `DEBUG = False` and configure allowed hosts and static/media file serving appropriately.

## Screenshots
<p align="center">
  <img src="https://github.com/user-attachments/assets/14fd20a8-7edd-439e-9e10-62627c4cddc9" alt="Image 1" width="45%" style="display:inline-block; margin-right: 10px;"/>
  <img src="https://github.com/user-attachments/assets/b7734b37-ebaa-4248-a745-2d98dc4e67c5" alt="Image 2" width="45%" style="display:inline-block; margin-right: 10px;"/>
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/4dbbfa22-95ef-45d2-a4f1-4349444b71dc" alt="Image 1" width="45%" style="display:inline-block; margin-right: 10px;"/>
  <img src="https://github.com/user-attachments/assets/b2cf1004-e1de-4bf7-b10d-72fa37e6848c" alt="Image 2" width="45%" style="display:inline-block; margin-right: 10px;"/>
</p> 
