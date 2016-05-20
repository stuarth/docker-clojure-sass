FROM clojure

# Install Ruby. This is needed to install the Ruby gem `sass`.
RUN apt-get update && apt-get install -y ruby2.1

# Install Ruby gem 'sass'. This will be used to compile scss to css.
RUN gem2.1 install sass -v 3.4.22 --no-ri --no-rdoc

# Retrieve yuicompressor that will be used to minify and combine assests.
RUN wget https://github.com/yui/yuicompressor/releases/download/v2.4.8/yuicompressor-2.4.8.jar
