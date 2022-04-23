pipeline{
    agent { label 'Prod'}
    environment {
        registry = "chash07/Capstone-project1"

    stages{
        stage("Build Website"){
            steps{
                sh docker.build registry + ":V$BUILD_NUMBER"

            }
        }
    
        stage("Test Website"){
            steps{
                echo "Test Successfull"
            }
        }

        stage("Push to Production"){
            steps{
              sh "docker run -d --name apache -p 80:80"
            }
        }
    }
}
