require 'open-uri'
class EvparseController < ApplicationController
    
  def list
    @event = Event.order('id DESC').all
  end

  def back_save
    @event=Event.find_by_ev_num(params[:num])
    @event.img_url=params[:img]
    @event.bg_url=params[:bg]
    @event.save
    
    
    redirect_to '/evparse/list'
  end
  
  def edit
    @event=Event.find_by_ev_num(params[:id])
  end
  
  # 여기부터
  def save
    1.upto(3) do |c|
      @doc = Nokogiri::HTML(open("http://www.playdb.co.kr/playdb/playdblist.asp?Page=#{c}&sReqMainCategory=000003&sReqSubCategory=&sReqDistrict=&sReqTab=2&sPlayType=3&sStartYear=&sSelectType=1"))
      
      # 플레이DB에서 container1부분의 첫번째 테이블 중, 데이터들이 몰려있는 10번째 tr을 불러온다.
      contents=@doc.css(".container1").at("table/tr[10]")
      
      # 데이터들은 table의 tr [3~31]까지 중 홀수부분에 들어있음, 페이지 당 15개
      1.upto(15) do |g|
        e = Event.new
        image=contents.at("tr[#{g*2+1}]/td/table/tr/td/table/tr/td[1]")
        e.img_url=image.at("img").attr("src")
        
        gul=contents.at("tr[#{g*2+1}]/td/table/tr/td/table/tr/td[3]") # 마지막 td[1]에 사진있음.
        name=gul.at("table/tr[1]").at("a")
        e.name=name.inner_text
        event_num=name.attr("onclick")[-7..-3]
        e.ev_num=event_num
        e.bg_url = ""
        
        detail=gul.at("table/tr[2]/td").inner_text.split("세부장르 : ").join(" ")
        genre=detail.split("일시 : ").first
        detail=detail.split("일시 : ").last
        date=detail.split("장소 : ").first
        detail=detail.split("장소 : ").last
        place=detail.split("출연 : ").first
        
        lineup=String.new
        lineup_doc=Nokogiri::HTML(open("http://m.playdb.co.kr/Play/Cast/#{event_num}"))
        
        lineup_doc.css(".name").each do |l|
          star = l.inner_text
          lineup += star + ", "
        end
        
        
        
        e.genre=genre
        e.date=date
        e.place=place
        e.lineup=lineup
        e.save
        #detail=gul.at("table/tr[2]/td").inner_text.split("세부장르 : ").join(" ").split("일시 : ").join(" ").split("장소 : ").join(" ").split("출연 : ").join(" ")
        #@contents.append(detail.split(/[세부장르 :,일시 :,장소 :,출연 :]/).join(" "))
      end
      
    end
    
    redirect_to '/evparse/list'
  end
  
  #여기가 파싱 코어코드
  
  def selected
    fest_num=params[:id]
    
    @event=Event.find_by_ev_num(params[:id])
    
    #아티스트들 사진과 이름을 긁어다가 이차원 배열에 넣는 코드. 배열을 그대로 이용하면 출력도 편하게 할 수 있다.
    lineup_doc=Nokogiri::HTML(open("http://m.playdb.co.kr/Play/Cast/#{fest_num}"))
    container=lineup_doc.css(".cast_list")
    @persons=Array.new(container.css("li").length) {Array.new(2 )}
    i=0
    
    container.css("li").each do |l|
      @persons[i][0]=l.css("img").attr("src").text
      @persons[i][1]=l.css(".name").text
      
      i+=1
    end
  end
    
    
end
