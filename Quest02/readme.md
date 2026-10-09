━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Tujuan    : Memahami kebalikan dari Quest 01
Konsep    : Bagi dengan 2 berulang, catat sisa. Sisa dibaca terbalik.

Input     : Bilangan desimal (misal 22)
Output    : String biner (misal "10110")

Contoh    :
   Input : 22
   Output: "10110"

   Karena:
      22 / 2 = 11, sisa 0  → bit ke-0 = 0
      11 / 2 =  5, sisa 1  → bit ke-1 = 1
       5 / 2 =  2, sisa 1  → bit ke-2 = 1
       2 / 2 =  1, sisa 0  → bit ke-3 = 0
       1 / 2 =  0, sisa 1  → bit ke-4 = 1
                                ─────
   Dibaca terbalik:           "10110"

Aturan    :
   - Tidak pakai @bitCast
   - Tidak pakai std.fmt
   - Simpan hasil di buffer, lalu balik urutannya
   - Hanya operasi bit dan aritmatika

Verifikasi: Uji dengan tabel berikut:

   | Input | Expected Output |
   |-------|-----------------|
   | 0     | "0"             |
   | 1     | "1"             |
   | 2     | "10"            |
   | 3     | "11"            |
   | 10    | "1010"          |
   | 15    | "1111"          |
   | 16    | "10000"         |
   | 22    | "10110"         |
   | 255   | "11111111"      |

Tantangan :
   - Output dengan spasi setiap 4 bit: "0001 0110"
   - Output dengan prefix "0b": "0b10110"
   - Handle nilai 0 dengan benar (jangan output kosong)
