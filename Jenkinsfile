def imageName = 'nickbaynham/sre-loader'

node('workers'){
    stage('Checkout'){
        checkout scm
    }

    stage('Unit Tests') {
        def imageTest = docker.build("${imageName}-test", "-f Dockerfile.test .")
        sh "docker run --rm -v $PWD/reports:/app/reports ${imageName}-test"
        sh "ls $PWD/reports/"
        junit "**/reports/*.xml"
    }
}
