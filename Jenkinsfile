pipeline {
  agent {
      docker {
//          image 'portus.sds-act.com/coe-sample/eureka-sample'
          registryUrl 'https://portus.sds-act.com'
          registryCredentialsId 'dockeruser'
      }
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
    stage('Containerize') {
        steps {
            script {
                dockerImage = docker.build("portus.sds-act.com/coe-sample/eureka-sample:${env.BUILD_ID}")
            }
        }
    }
    stage('Deploy Nexus') {
        steps {
            script {
                dockerImage.push()
                dockerImage.push('latest')
            }
        }
    }
  }
}
