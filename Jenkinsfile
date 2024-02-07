pipeline {
    agent any
    stages {
        stage("Verifiying tools") {
            steps {
                // echo 'Etape un'
                sh '''
                    cd env-ci/
                    docker version
                    docker info
                    docker compose version
                    curl --version
                    jq --version
                '''
            }
        }
        stage("Prune Docker Data") {
            steps {
                // sh 'docker system prune -a --volumes -f'
                echo 'Etape deux'
            }
        }
        stage("Start Container") {
            steps {
                 echo 'Etape Trois'

                // sh 'docker compose up -d --no-color --wait'
                // sh 'docker compose ps'
            }
        }


    }
    // post{
    //     always{
    //         sh 'docker compose down --remove-orphans -v'
    //         sh 'docker compose ps'
    //     }
    // }
}