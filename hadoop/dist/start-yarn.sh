#!/bin/bash
bin/yarn-daemon.sh start historyserver
bin/yarn-daemon.sh start resourcemanager
bin/yarn nodemanager
