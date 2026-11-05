# Bài làm – GreenField FC

Họ và tên: Bùi Hoàng Anh 
Lớp: HN_K26-CNTT3

## 4.2 Thao tác CLI
Lệnh đã chạy:
```bash
pwd ; ls -la
mv ghi-chu-ban-giao.txt docs ; mkdir backup ; cp data/danh-sach-cau-thu.xlsx backup
rm temp-002.tmp ; cd logs ; ls -la ; cd ..
```

Kết quả liệt kê toàn bộ dự án (bao gồm file ẩn):
```text
.					Danh Sach Cau Thu.xlsx.inspect.ndjson	docs
..					backup					evidence
.DS_Store				bai_lam.md				logs
.env					data					web

./backup:
.			..			danh-sach-cau-thu.xlsx

./data:
.			..			.DS_Store		danh-sach-cau-thu.xlsx

./docs:
.			..			ghi-chu-ban-giao.txt

./evidence:
.	..

./logs:
.		..		access.log

./web:
.		..		app.js		images		index.html	style.css

./web/images:
.			..			greenfield-logo.png	greenfield-logo.svg

```
## 4.3 Lọc log
**a) Lệnh lọc status=500:**

```bash
grep "status=500" logs/access.log > logs/loi_500.txt
```
Hai dòng đầu của loi_500.txt:

```text
2026-10-28 18:03:25 GET /api/players status=500
2026-10-28 18:05:12 GET /api/players status=500
```

**b) Lệnh đếm status=404 và kết quả:**

```bash
grep "status=404" logs/access.log | wc -l
```

```text
       4
```
## 4.4 Script báo cáo
Lệnh chạy script:
```bash
bash tong_hop.sh
```

Nội dung logs/tong_hop.txt:

```text
=== BAO CAO GREENFIELD FC ===
2026-10-28 18:03:22 GET /images/logo-sai.png status=404
2026-10-28 18:07:44 GET /fixtures status=404
2026-10-28 18:13:52 GET /favicon.ico status=404
2026-10-28 18:32:18 GET /api/players status=404
       3
```

## 4.6 Kiểm tra website và báo cáo lỗi
| Tab | Tên file/thông báo | Cách khắc phục |
|---|---|---|
| Network | app.js / Cross origin requests are only supported for HTTP.| Sửa src = "./images/greenfield-logo.png"  |
| Console | index.html / [Error] Not allowed to load local resource: file:///Users/julia/Documents/Starter_Kit_GreenField_FC/starter-kit/greenfield-fc/web/images/logo-sai.png (index.html, line 11) | |

**Context:** 

**Expected:**

**Actual:**

**Log:**

Câu tìm kiếm Google:

## Ghi chú Excel
Công thức/khó khăn đã gặp:
