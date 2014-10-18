# Kevlar

Kevlar is a Ruby on Rails applications sharing secrets that are kept until they are accessed, they are then deleted permanently from the server.

Kevlar requires no registration to create secrets, although not as secure as PGP kevlar is the website equivalent of sending an e-mail and asking the recipient
to delete the e-mail once it has been read.

Here are a few screensots from http://kevlar.io

![image](https://cloud.githubusercontent.com/assets/1238468/4661977/0080baae-552b-11e4-8349-02a211c5cc2f.png)

![image](https://cloud.githubusercontent.com/assets/1238468/4661980/08b24ff8-552b-11e4-9153-0263fa3f22ad.png)

![image](https://cloud.githubusercontent.com/assets/1238468/4661983/10b92e7e-552b-11e4-9e56-b54adb51847d.png)


## Installing

```
$ git clone git@github.com:adambutler/kevlar.git
$ cd kevlar
$ bundle install
$ rake db:create
$ rake db:migrate
$ cp .env.example .env
```

Modify the `.env` file to set your own secret used to encrypt secrets.

## Contributing

Contributions are welcome, please follow [GitHub Flow](https://guides.github.com/introduction/flow/index.html)
