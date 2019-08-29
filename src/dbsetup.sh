#!/bin/bash
set -e
service mysql start
mysql < /sql/dance.sql
service mysql stop