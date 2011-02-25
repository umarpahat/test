import com.intelligrape.linkSharing.User
import com.intelligrape.linkSharing.Topic
import com.intelligrape.linkSharing.LinkResource
import com.intelligrape.linkSharing.DocumentResource
import com.intelligrape.linkSharing.Subscription
import com.intelligrape.linkSharing.ReadableItem
import com.intelligrape.linkSharing.Resource
import com.intelligrape.linkSharing.TopicType
import com.intelligrape.linkSharing.Seriousness

class BootStrap {
 def bootstrapService
  def init = { servletContext ->
    bootstrapService.createDummyData()
     }
  /* User user =new User()
      if(!user.save()) {
       showErrors(user)
      }*/
    def destroy = {
    }
  void showErrors(Object object){
   object.errors.allError.each {
     println  it
   }
  }
 }