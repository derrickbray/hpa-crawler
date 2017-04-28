class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  class Entry
    def initialize(title, link)
      @title = title
      @link = link
    end
    attr_reader :title
    attr_reader :link
  end

  def scrape_urls
    require 'mechanize'
    url = 'http://www.derrickbray.site/'
    agent = Mechanize.new
    page = agent.get(url)
    page.links.each do |link|
      puts
      print link.href
    end
  end

  def index
    @crawl = crawl.all
    format.html { render 'index'}
  end

  def show
    @crawl = crawl.all
    format.html { render 'show'}
  end
end
