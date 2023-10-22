#!/bin/bash

# Jalankan pekerjaan lint-dockerfile
circleci local execute lint-dockerfile

# Jalankan pekerjaan test-app
circleci local execute test-app

# Jalankan pekerjaan build-app-karsajobs
circleci local execute build-app-karsajobs
