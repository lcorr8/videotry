class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def select_assign_sections
    @user_video = UserVideo.new
    @user_videos = UserVideo.where(user_id: 1, :section_id => nil)
  end

  def assign_sections
    #raise params.inspect
#    { 
#      "/assign_sections"=> {
#        "section_id"=>"8"
#        }, 
#      "user"=>{
#        "video_ids"=>["2", "3"]
#        }, 
#      "commit"=>"Save /assign sections",
#      "controller"=>"application",
#      "action"=>"assign_sections"}
#       permitted: false>

  #@user_videos = UserVideo.where(user_id: 1, :section_id => nil)

    #use the video_ids to select the user_videos entry
      #@video_ids =  ["2", "3"]
      @video_ids = params[:user][:video_ids]
      @video_ids.each do |video_id|
        @user_video = UserVideo.where(user_id: 1, :video_id => video_id)
        #to that entry, asign the section
          #"/assign_sections"=> {
#        "section_id"=>"8"
        @user_video[0].section_id = params[:user_video][:section_id].to_i

        @user_video[0].save 
        #pry
        #raise "redirect back to page"
        redirect_to select_assign_sections_path
      end
    
    #end

  end
end
