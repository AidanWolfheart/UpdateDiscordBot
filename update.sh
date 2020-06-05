#  GNU nano 4.8                                                          update.sh                                                                     
#!/bin/bash
if [ $# -eq 0 ]
then
        echo "No version was given as a first parameter."
else
        echo "Terminating MusicBot"
        pkill -f 'java.*JMusicBot'
        ###
        echo "Downloading new version"
        wget https://github.com/jagrosh/MusicBot/releases/download/$1/JMusicBot-$1-Linux.jar
        ###
        echo "Removing older version"
        rm JMusicBot.jar
        ###
        echo "Updating to newer version"
        mv JMusicBot-$1-Linux.jar JMusicBot.jar
        sh ./run.sh
fi

