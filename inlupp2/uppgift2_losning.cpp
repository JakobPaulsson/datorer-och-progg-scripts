//
// Datorer och programmering, 1TD317
// Inlämningsuppgift 2 - "Styrande satser"
// Skriven av Torsten Jarkrans, uppdaterad av Martin Kronbichler

#include <iostream>
using namespace std;

int main()
{
  int antal = 0, vinnare = -1, vinnartid = 0, startnr = 1;

  cout << "Startnummer? ";
  cin >> startnr;

  while (startnr != -1)
    {
      int starttim, startmin, startsek, maltim, malmin, malsek;

      antal++;
      cout << "Starttid? ";
      cin >> starttim >> startmin >> startsek;

      cout << "Måltid? ";
      cin >> maltim >> malmin >> malsek;

      int starttid = starttim * 3600 + startmin * 60 + startsek;
      int maltid   = maltim   * 3600 + malmin   * 60 + malsek;

      // har midnatt passerats?
      if (starttid > maltid)
        maltid = maltid + 24 * 3600;

      int sluttid = maltid - starttid;
      if (sluttid < vinnartid || antal == 1)
        {
          vinnare   = startnr;
          vinnartid = sluttid;
        }

      cout << "Startnummer? ";
      cin >> startnr;
    }

  if (vinnare != -1)
    {
      int slutsek = vinnartid % 60;
      int sluttim = vinnartid / 3600;
      int slutmin = (vinnartid - sluttim * 3600) / 60;
      cout << "Vinnare är startnr: " << vinnare << endl;
      cout << "Tim: " << sluttim << " Min: " << slutmin << " Sek: " << slutsek
           << endl;
      cout << "Antal tävlande: " << antal << endl;
    }
  else
    cout << "Inga tävlande" << endl;

  cout << "Programmet avslutas" << endl;

  return 0;
}
