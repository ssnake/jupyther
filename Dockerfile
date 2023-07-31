FROM jupyter/datascience-notebook

USER root

# Install Ubuntu packages
RUN apt-get update && \
    apt-get install -y libmagic-dev poppler-utils tesseract-ocr git gcc

# Install Python libraries
RUN pip install langchain openai unstructured[local-inference] chromadb 
RUN pip install "detectron2@git+https://github.com/facebookresearch/detectron2.git@v0.6#egg=detectron2"

USER $NB_UID