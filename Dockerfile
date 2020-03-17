FROM python:3.6.2
RUN pip install --upgrade pip
RUN pip install html2text urllib3 sh
COPY wordcount.py /
ENV NumWords=10 MinLength=0
CMD python wordcount.py http://shakespeare.mit.edu/hamlet/full.html
