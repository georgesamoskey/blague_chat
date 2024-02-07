// pipeline {
//     agent { node { label 'my-node' } }
//     stages {
//         stage("Verifiying tools") {
//             steps {
//                 // echo 'Etape un'
//                   sh label: '', script: '''
//                     docker version
//                     docker info
//                     docker compose version
//                     curl --version
//                     jq --version
//                 '''
//             }
//         }
//         stage("Prune Docker Data") {
//             steps {
//                 // sh 'docker system prune -a --volumes -f'
//                 echo 'Etape deux'
//             }
//         }
//         stage("Start Container") {
//             steps {
//                  echo 'Etape Trois jj'
//                 // sh 'docker compose up -d --no-color --wait'
//                 // sh 'docker compose ps'
//             }
//         }


//     }
//     // post{
//     //     always{
//     //         sh 'docker compose down --remove-orphans -v'
//     //         sh 'docker compose ps'
//     //     }
//     // }
// }
pipeline {
  agent any
  stages {
    stage("Verification des outils ") {
      steps {
        bat 'docker version'
        bat 'docker info'
        bat 'docker compose version'
        bat 'curl --version'
        bat 'jq --version'
            }
        }
    stage("Creations des volumes ") {
     steps {
            bat 'docker system prune -a --volumes -f'
        }
    }
    stage("Start Container") {
     steps {
             bat 'docker compose up -d --no-color --wait'
             bat 'docker compose ps'
        }
    }
    // stage('Build') {
    //   steps {
    //     bat 'docker build -t my-container .'
    //   }
    // }
    // stage('Run') {
    //   steps {
    //     bat 'docker run -d -p 9009:9009 my-container'
    //   }
    // }
  }
 post{
      always{
            bat 'docker compose down --remove-orphans -v'
            bat 'docker compose ps'
        }
    }
}