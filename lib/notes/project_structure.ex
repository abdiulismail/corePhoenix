# phoeni is a web dev framework writen in elixir which implements the server-side model view controller (mvc) pattern
#
# Directory structure
# =====================
# _build -
#  -------
# a directory created by the mix command line tool that ships as part of elixir that holds all compiltation artificats.
# mix is the main interface of your application, we use mix to compile our code, create database, run our server and more
# this directory must be not be checked into version control
#
# assets
#  ------
# a directory that keeps source code for your front-end assets, typically css and js files
# these sources are automatically bundled by the esbuild tool
# static files like images and fonts go in priv/static
#
# config
# -------
# a directory that holds your project configuration.
# the config/config.exs file is the entry point for your configuration
# at the end of the config/config.exs , it imports environment specifics configuration, which can be found in config/dev.exs, config/test.exs and config/prod.exs
# finally config/runtime.exs is executed and it is the best place to read secrets and other dynamic configuration
#
# deps
# ----
# a directory with all of our mix dependencies.
# you can find all the dependencies listed in the mix.exs file, inside the defp deps do function defnition.
# this directory must not be checked into version control and can be removed any time
# removing will force mix to download all deps from scratch
#
# lib
# ---
# a directory that holds your application source code
# this directory is broken into two subdirectories , the lib/projectname and lib/projectname_web
# the lib/projectname directory will be responsible to host all of your business logic and business domain
# it will typically interface directly with the database - it is the model in mvc architecture
#
# the lib/projectname_web is responsible for exposing your business domain to the world, in this case through a web application
# it holds both the view and controller from mvc
#
# priv
# ----
# a directory that keeps all resoruces that are necessary in production but not directly part of your source code
# you typically keep database scripts, translation files, images and more in here
# generated assets , created from files in the assets directory are placed in priv/static/assets by default
#
# test
# -----
# a directory will all of our application tests
# it often mirrors the same structure found in lib
#
# The lib/projectname directory
# ------------------------------
# the lib/projectname directory hostsl all of your business domain.
# by default you will find application.ex, mailer.ex and repo.ex
# the application.ex file defines an elixir application named projectname.Application
# the projectname.Application module defines which services are part of our application
#
# the lib/projectname/mailer.ex file holds the projectname.Mailer module, which defines the main interface to deliver e-mail
#
# the repo.ex file defines the projectname.Repo module which is our main interface to the database.
#
#
# The lib/projectname_web directory
# ---------------------------------
# the lib/projectname_web directory holds the web-related parts of our application.
# all of the files which are currently in the controller and components directory are there to create the "welcome to phoenix" page
# by looking at the controlle and components directories, we can see phoenix provides features for handling layouts and html and error  pages out of the box
#
# the directories also has other files at its root
# endpoint.ex - is the entry point for the HTTP requests
#             once the browser access http.//localhost:4000, the endpoint starts processing the data, eventually leading to the router which is defines in router.ex
# router.ex - the router.ex defines the rules to dispatch request to controllers, which calls a view module to render html pages back to client
#
# telemetry.ex - through telemetry, phoenix is able to collect metrics and send monitoring events of your application
# the telemetry file defines the supervisor responsible for managing the telemetry processes
#
# gettext.ex - provides intenationalization though gettext
#
# the assets directory
# ---------------------
# the assets directroy contains source file related to front-end assets such as js and css
# when running in dev mode, phoenix watches any changes you make in the assets direcotory, and then takes care of updating the front end application as you work
#
#
