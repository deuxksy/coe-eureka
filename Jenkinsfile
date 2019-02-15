pipeline {
  agent any
  
  environment {
    registry = "portus.sds-act.com/coe-sample/eureka-sample"
    dockerImage = ''
    buildnum = ''
  }
  
  stages {
  
    stage('Cloning Git') {
      steps {
        git credentialsId: 'min0418', url: 'https://github.com/SDSACT/coe-eureka.git'
      }
    }   
       
    stage('Build Project') {
      steps {
        container('maven') {
            script{
                sh "mvn clean install -Dprofile=kube -DskipTests=true"
            }
        }
      }
    }
    stage('Building image') {
      steps{
        container('docker') {
            script {
              buildnum = '${BUILD_NUMBER}'
              dockerImage = docker.build registry + ":" + buildnum
            }
        }
      }
    }
    stage('Deploy Image') {
      steps{
        container('docker') {        
            script {
              docker.withRegistry('https://portus.sds-act.com', 'dockeruser' ) {
                dockerImage.push()
              }
            }
        }
      }
    }
  }
}
