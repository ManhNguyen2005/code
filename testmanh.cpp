#include <iostream>
#include <fstream>  
#include <stdlib.h> 
#include <string>  
#include <sstream>

using namespace std;

int xem_va_timkiem()
{
    ifstream xvtk("books.txt"); 
    string A[100][8], x;

    int run = 0; 
    
    while (getline(xvtk, x)) 
    {
        string isbn = "", title = "", subject = "",
               author = "", publisher = "", date = "", pages = "", copies = "";

        int kt = 0;
        for (size_t i = 0; i < x.size(); ++i)
        {
            if (x[i] == ' ')
            {
                if (kt == 0)
                {
                    kt = 1;
                    continue;
                }
                if (kt == 1)
                {
                    kt = 2;
                    continue;
                }
                if (kt == 2)
                {
                    kt = 3;
                    continue;
                }
                if (kt == 3)
                {
                    kt = 4;
                    continue;
                }
                if (kt == 4)
                {
                    kt = 5;
                    continue;
                }
                if (kt == 5)
                {
                    kt = 6;
                    continue;
                }
                if (kt == 6)
                {
                    kt = 7;
                    continue;
                }
            }

            if (kt == 0)
            {
                isbn += x[i];
            }
            if (kt == 1)
            {
                title += x[i];
            }
            if (kt == 2)
            {
                subject += x[i];
            }
            if (kt == 3)
            {
                author += x[i];
            }
            if (kt == 4)
            {
                publisher += x[i];
            }
            if (kt == 5)
            {
                date += x[i];
            }
            if (kt == 6)
            {
                pages += x[i];
            }
            if (kt == 7)
            {
                copies += x[i];
            }
        }

        A[run][0] = isbn;
        A[run][1] = title;
        A[run][2] = subject;
        A[run][3] = author;
        A[run][4] = publisher;
        A[run][5] = date;
        A[run][6] = pages;
        A[run][7] = copies;
        run++;
    }
	//Hien ra tat ca sach trong thu vien
    for (int _ = 0; _ < sizeof(A) / sizeof(A[0]); _++)
    {
        if (A[_][0] == "")
        {
            continue;
        }
        cout << A[_][0] << " | " << A[_][1] << " | " << A[_][2] << " | " << A[_][3] << " | " << A[_][4] << " | " << A[_][5] << " | " << A[_][6] << " | " << A[_][7] << "\n";
    }
    while (true){
        cout << "Menu tim kiem " << endl;
        cout << "1.Tim kiem theo ten sach\n2.Tim kiem theo chu de\n3.Tim kiem theo tac gia\n";
        cout << "4.Tim kiem theo nha xuat ban\n5.Tim kiem theo nam xuat ban\n";
        cout<<"Ban muon tim kiem bang phuong thuc nao: ";
        int choice;
        cin >> choice;
        switch (choice) {
            case 1: {
                string tensach;
                cout << "Nhap ten sach can tim kiem: ";
                cin >> tensach;
                int cnt = 0;
                for (size_t i = 0; i < 100; i++) {
                    if (tensach == A[i][1]) {
                        cnt++;
                        cout << A[i][0] << " | " << A[i][1] << " | " << A[i][2] << " | " << A[i][3]
                            << " | " << A[i][4] << " | " << A[i][5] << " | " << A[i][6] << " | " << A[i][7] << "\n";
                    }
                }
                if (cnt == 0) {
                    cout << "Khong tim thay.\n";
                }
                cout<<"Ban co muon tim sach khac khong(Y/N): ";
                string yc;
                cin>>yc;
                if (yc == "Y")	break;
                else return false;
            }
            case 2: {
                string chude;
                cout << "Nhap chu de can tim kiem: ";
                cin >> chude;
                int cnt = 0;
                for (size_t i = 0; i < 100; i++) {
                    if (chude == A[i][2]) {
                        cnt++;
                        cout << A[i][0] << " | " << A[i][1] << " | " << A[i][2] << " | " << A[i][3]
                             << " | " << A[i][4] << " | " << A[i][5] << " | " << A[i][6] << " | " << A[i][7] << "\n";
                    }
                }
                if (cnt == 0) {
                    cout << "Khong tim thay.\n";
                }
                cout<<"Ban co muon tim sach khac khong(Y/N): ";
                string yc;
                cin>>yc;
                if (yc == "Y")	break;
                else return false;
            }
            case 3:{
            	string tacgia;
                cout << "Nhap tac gia can tim kiem: ";
                cin >> tacgia;
                int cnt = 0;
                for (size_t i = 0; i < 100; i++) {
                    if (tacgia == A[i][3]) {
                        cnt++;
                        cout << A[i][0] << " | " << A[i][1] << " | " << A[i][2] << " | " << A[i][3]
                             << " | " << A[i][4] << " | " << A[i][5] << " | " << A[i][6] << " | " << A[i][7] << "\n";
                    }
                }
                if (cnt == 0) {
                    cout << "Khong tim thay.\n";
                }
                cout<<"Ban co muon tim sach khac khong(Y/N): ";
                string yc;
                cin>>yc;
                if (yc == "Y")	break;
                else return false;
			}
			case 4:{
				string nxb;
                cout << "Nhap ten nxb can tim kiem: ";
                cin >> nxb;
                int cnt = 0;
                for (size_t i = 0; i < 100; i++) {
                    if (nxb == A[i][4]) {
                        cnt++;
                        cout << A[i][0] << " | " << A[i][1] << " | " << A[i][2] << " | " << A[i][3]
                             << " | " << A[i][4] << " | " << A[i][5] << " | " << A[i][6] << " | " << A[i][7] << "\n";
                    }
                }
                if (cnt == 0) {
                    cout << "Khong tim thay.\n";
                }
                cout<<"Ban co muon tim sach khac khong(Y/N): ";
                string yc;
                cin>>yc;
                if (yc == "Y")	break;
                else return false;
			}
			case 5:{
				string ngxb;
                cout << "Nhap nam xuat ban can tim kiem: ";
                cin >> ngxb;
                int cnt = 0;
                for (size_t i = 0; i < 100; i++) {
                    if (ngxb == A[i][4]) {
                        cnt++;
                        cout << A[i][0] << " | " << A[i][1] << " | " << A[i][2] << " | " << A[i][3]
                             << " | " << A[i][4] << " | " << A[i][5] << " | " << A[i][6] << " | " << A[i][7] << "\n";
                    }
                }
                if (cnt == 0) {
                    cout << "Khong tim thay.\n";
                }
                cout<<"Ban co muon tim sach khac khong(Y/N): ";
                string yc;
                cin>>yc;
                if (yc == "Y")	break;
                else return false;
			}
            default:
            	return false;
        }
	}
    return 0;
}


int main()
{
	xem_va_timkiem();
	return 0;
}
