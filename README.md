# Kevlar

Kevlar is a Ruby on Rails applications sharing secrets that are kept until they are accessed, they are then deleted permanently from the server.

Kevlar requires no registration to create secrets, although not as secure as PGP kevlar is the website equivalent of sending an e-mail and asking the recipient
to delete the e-mail once it has been read.

Here are a few screensots from http://kevlar.io

![image](https://cloud.githubusercontent.com/assets/1238468/4652277/b9e13d4e-54a3-11e4-88a2-52d832787057.png)

![image](https://cloud.githubusercontent.com/assets/1238468/4652269/acce543e-54a3-11e4-9006-9fe4b0113557.png)

![image](https://cloud.githubusercontent.com/assets/1238468/4652272/b2063976-54a3-11e4-8a92-737827ec53cc.png)

## Installing

```
$ git clone git@github.com:adambutler/kevlar.git
$ cd kevlar
$ bundle install
$ rake db:create
$ rake db:migrate
```

## Contributing

Contributions are welcome, please follow [GitHub Flow](https://guides.github.com/introduction/flow/index.html)
