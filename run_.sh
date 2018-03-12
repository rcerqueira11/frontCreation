echo "kill background instance"
pkill -f 'java -jar'

echo "Docker compose" 
docker-compose -p neksosh up -d

echo "dashboard-admin.jar on background" 
java -jar neksosh-be-dashboard-admin/build/libs/dashboard-admin.jar &

echo "application.jar" 
java -jar neksosh-be-server/build/libs/application.jar