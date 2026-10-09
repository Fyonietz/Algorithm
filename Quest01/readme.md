━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Tujuan    : Memahami bahwa biner hanyalah jumlah dari pangkat 2
Konsep    : Setiap bit ke-i bernilai 2^i. Jumlahkan bit yang aktif.

Input     : String biner (misal "10110")
Output    : Nilai desimal (misal 22)

Contoh    :
   Input : "10110"
   Output: 22

   Karena:
      1 × 2^4 = 16
      0 × 2^3 =  0
      1 × 2^2 =  4
      1 × 2^1 =  2
      0 × 2^0 =  0
                ────
                22

Aturan    :
   - Tidak pakai parseInt
   - Tidak pakai pow
   - Loop dari kiri ke kanan ATAU kanan ke kiri (pilih sendiri)
   - Hanya pakai operasi bit dan aritmatika dasar

Verifikasi: Uji dengan tabel berikut:

   | Input     | Expected Output |
   |-----------|-----------------|
   | "0"       | 0               |
   | "1"       | 1               |
   | "10"      | 2               |
   | "11"      | 3               |
   | "1010"    | 10              |
   | "1111"    | 15              |
   | "10000"   | 16              |
   | "10110"   | 22              |
   | "11111111"| 255             |

Tantangan :
   - Terima input dengan spasi: "1010 1100"
   - Terima input dengan prefix "0b": "0b1010"
   - Handle error jika input bukan 0/1
