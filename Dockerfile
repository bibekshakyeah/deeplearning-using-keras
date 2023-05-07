# Use the latest TensorFlow GPU image with Jupyter
FROM tensorflow/tensorflow:latest-gpu-jupyter

# Install scikit-learn
RUN pip install jupyterthemes
RUN jt -t onedork -fs 95 -altp -tfs 11 -nfs 115 -cellw 88% -T
RUN pip install scikit-learn
RUN pip install imageio

# Set the working directory to /tf
WORKDIR /tf

# Copy the contents of the local directory to /tf in the container
COPY . /tf

# Expose port 8888 for Jupyter notebooks
EXPOSE 8888

# Start Jupyter notebook on container start
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
