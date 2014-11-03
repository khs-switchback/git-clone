FROM switchback/git-debian

ENV REVISION null

# add script to run
ADD *.sh /usr/local/bin/

CMD /bin/bash /usr/local/bin/run.sh $REPO $BRANCH $REVISION

