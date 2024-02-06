pipeline {
    agent any
    stages {
        stage("Verifiying tools") {
              stage("Prepare") {
            steps {
                bitbucketStatusNotify buildState: "INPROGRESS"
            }
        }

        stage("Build and start test image") {
            steps {
                sh "docker-composer build"
                sh "docker-compose up -d"
                waitUntilServicesReady
            }
        }
            // steps {
            //     sh 'docker version'
                // docker info
                // docker compose version
                // curl --version
                // jq --version
                // '''
            // }
        }
        // stage("Prune Docker Data") {
        //     steps {
        //         sh 'docker system prune -a --volumes -f'
        //     }
        // }
        // stage("Start Container") {
        //     steps {
        //         sh 'docker compose up -d --no-color --wait'
        //         sh 'docker compose ps'
        //     }
        // }

        // stage('Check Response') {
        //     steps {
        //         sh 'curl http://localhost'
        //     }
        // }
    }
    // post{
    //     always{
    //         sh 'docker compose down --remove-orphans -v'
    //         sh 'docker compose ps'
    //     }
    // }
}