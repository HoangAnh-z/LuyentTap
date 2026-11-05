#Script: tong_hop.sh
#Tac gia: Bui Hoang Anh
#Ngay tao: 05/11/2026

echo "Dang tao bao cao..."
echo "=== BAO CAO GREENFIELD FC ===" > logs/tong_hop.txt
cat "logs/access.log" | grep "status=404" >> logs/tong_hop.txt
cat "logs/access.log" | grep "status=500" | wc -l >> logs/tong_hop.txt