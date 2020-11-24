![logo](https://res.cloudinary.com/practicaldev/image/fetch/s--qtLpDnvY--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/i/47qjegyxjsp8uq0oemkg.png)

## Dockerize Ruby on Rails App with PostgreSQL
This is a demo of Rails API only application dockerized. And in docker-compose we run both the dockerized Rails app and PostgreSQL server.

Accompanying blog post: [Deploy a Ruby on Rails API only application in Docker with PostgreSQL](https://dev.to/joker666/deploy-a-ruby-on-rails-api-only-application-in-docker-with-postgresql-1933)

We create the application with 
```ruby
rails new docker-rails \
  --database=postgresql \
  --skip-action-mailbox \
  --skip-action-text \
  --skip-spring -T \
  --skip-turbolinks \
  --api
```

## Migration
To run both the services
```bash
docker-compose -f docker-compose.yml up --build
```

After that, we can run the following command for migration and seeding the database.

```bash
docker-compose run web rails db:migrate
docker-compose run web rails db:seed
```

## Contribution
Want to contribute? Great!

To fix a bug or enhance an existing code, follow these steps:

- Fork the repo
- Create a new branch (`git checkout -b improve-feature`)
- Make the appropriate changes in the files
- Add changes to reflect the changes made
- Commit your changes (`git commit -am 'Improve feature'`)
- Push to the branch (`git push origin improve-feature`)
- Create a Pull Request

## License
MIT © [MD Ahad Hasan](https://github.com/joker666)
