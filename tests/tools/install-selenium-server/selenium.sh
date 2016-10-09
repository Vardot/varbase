#!/bin/bash

case "${1:-''}" in
    'start')
        if test -f /tmp/selenium.pid
        then
            echo "Selenium is already running."
        else
            java -jar /usr/lib/selenium/selenium-server-standalone.jar -port 4445 > /var/log/selenium/output.log 2> /var/log/selenium/error.log & echo $! > /tmp/selenium.pid
            echo "[  OK  ] Starting Selenium on the 4445 port ..."

            error=$?
            if test $error -gt 0
            then
                echo "[ Error ] ${bon}Error $error! Could not start Selenium!${boff}"
            fi
        fi
    ;;
    'stop')
        if test -f /tmp/selenium.pid
        then
            echo "Stopping Selenium..."
            PID=`cat /tmp/selenium.pid`
            kill -3 $PID
            if kill -9 $PID ;
                then
                    sleep 2
                    test -f /tmp/selenium.pid && rm -f /tmp/selenium.pid
                else
                    echo "[ Error ] Selenium could not be stopped ..."
                fi
        else
            echo "[ Error ] Selenium is not running."
        fi
        ;;
    'restart')
        if test -f /tmp/selenium.pid
        then
            kill -HUP `cat /tmp/selenium.pid`
            test -f /tmp/selenium.pid && rm -f /tmp/selenium.pid
            sleep 1
            java -jar /usr/lib/selenium/selenium-server-standalone.jar -port 4445 > /var/log/selenium/output.log 2> /var/log/selenium/error.log & echo $! > /tmp/selenium.pid
            echo "[  OK  ] Reload Selenium on the 4445 port ..."
        else
            echo "[ Error ] Selenium isn't running..."
        fi
        ;;
    *)      # no parameter specified
        echo "Usage: $SELF start|stop|restart"
        exit 1
    ;;
esac
