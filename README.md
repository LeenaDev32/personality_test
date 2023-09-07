#### 1. Install Ruby 3.0.0

[Install RVM](https://rvm.io/rvm/install)

After installing go to project directory and install 3.0.0 ruby version
```
cd [your-path]/[project-name]
rvm install 3.0.0
```

#### 2. Install PostgreSQL

Just example:
```
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib
sudo -u postgres psql
```
#### 3. Create the databases
```
bundle install
bundle exec rails db:setup or rails db:migrate
```

### 4. Run Seed file
```
rails db:seed
```

#### Run server
```
rails s
```
