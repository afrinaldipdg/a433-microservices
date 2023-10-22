#!/bin/bash

# Jalankan pekerjaan lint-dockerfile
circleci local execute lint-dockerfile

# Jalankan pekerjaan build-app-karsajobs
circleci local execute build-app-karsajobs-ui
