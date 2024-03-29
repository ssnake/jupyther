FROM jupyter/datascience-notebook

USER root

# Install Ubuntu packages
RUN apt-get update && \
    apt-get install -y libmagic-dev poppler-utils tesseract-ocr git gcc

# Install Python libraries
RUN pip install langchain unstructured[local-inference] chromadb 
RUN pip install openai==0.28.1
RUN pip install "detectron2@git+https://github.com/facebookresearch/detectron2.git@v0.6#egg=detectron2"
RUN pip install atlassian-python-api
RUN pip install pypdf chromadb tiktoken
RUN pip install lark

USER $NB_UID