pipeline{
  agent any
  stages{
    stage('Build Maven'){
      steps {
        checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aasthaas/Hello-World.git']])
        sh 'mvn clean install'
      }
    }
    stage('Build Docker Image') {
            steps {
                script{
                    sh 'docker build -t aasthaaa/spring-boot-hello-world .'
                }
            }
        }
    stage('Push Image to Docker Hub') {
            steps {
                script{
                    withCredentials([string(credentialsId: 'Dockerhub', variable: 'dockerhubpwd')]) 
                    {
                    sh 'docker login -u aasthaaa -p ${dockerhubpwd}'
}
                    sh 'docker push aasthaaa/spring-boot-hello-world'
                }
            }
        }
  }
}
