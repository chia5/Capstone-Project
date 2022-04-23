pipeline {
    agent { label 'Dev'}
    environment {
        registry = "chash07/capstone-project1"
    }
    stages{

        stage("Clone"){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/develop']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/chia5/Capstone-Project.git']]])
            }
        }

        stage("Build Website"){
            steps{
                script {
                    docker.build registry + ":V$BUILD_NUMBER"
                }
            }
        }
    
        stage("Test Website"){
            steps{
                echo "Test Successfull"
            }
        }
        
    }
}
