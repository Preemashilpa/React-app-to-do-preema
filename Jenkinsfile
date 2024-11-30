pipeline {
    agent any

tools {
        nodejs 'nodejs' 
    }
    
    stages{
        stage('git checkout'){
           steps{
               git branch: 'main', url: 'https://github.com/Preemashilpa/React-app-to-do-preema.git'
               
               
           }
        }
        
        stage('Docker Build and tag'){
         steps{
            sh "docker build -t preema21/react-to-do-application:1 ."

         }
      }
      stage('Containerisation'){
        steps{
            sh '''
            docker stop c1
            docker rm c1
             docker run -it -d --name c1 -p 9000:3000 preema21/react-to-do-application:1
            '''
        }
      }
    } 
}
