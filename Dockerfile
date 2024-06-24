# Use an official Nginx runtime as a base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the static HTML files and assets (CSS, images) from your local machine to the working directory in the container
COPY index.html .
COPY styles.css .
COPY flipkart_logo.png .
COPY product_image1.jpg .
COPY product_image2.jpg .
COPY product_image3.jpg .

# Expose port 80 to allow external access
EXPOSE 80

# Start Nginx server when the container launches
CMD ["nginx", "-g", "daemon off;"]
