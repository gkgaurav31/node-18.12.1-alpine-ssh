touch /run/openrc/softlevel

echo "sshd restart..."
# Ensure this happens after /sbin/init
( sleep 5 ; /etc/init.d/sshd restart ) &

echo "starting node"
cd /app
npm start

# Needs to start as PID 1 for openrc on alpine
echo "running /sbin/init..."
exec -c /sbin/init 