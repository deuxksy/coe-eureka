pipeline {
  agent {
      docker {
          image 'portus.sds-act.com/coe-sample/eureka-sample'
          registryUrl 'https://portus.sds-act.com'
          registryCredentialsId 'dockeruser'
      }
  }
  
  environment {
    registry = "portus.sds-act.com/coe-sample/eureka-sample"
    dockerImage = ''
    buildnum = ''
  }
  environment {
    SSHUSER = credentials("actadmin")
    DOCKERUSER = credentials("dockeruser")
  }
  stages {    
    stage('Build Project') {
      steps {
          script{
              sh "mvn clean install -Dprofile=kube -DskipTests=true"
        }
      }
    }
 
  }
}
