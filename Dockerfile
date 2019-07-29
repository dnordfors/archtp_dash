FROM amazon/aws-eb-python:3.4.2-onbuild-3.5.1
ADD application.py /
ADD requirements.txt /
RUN pip install -r requirements.txt
CMD [ "python", "./application.py" ]
