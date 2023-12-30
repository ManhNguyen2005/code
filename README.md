# code
void searchBook(const string A[][8], int size){
	string isbnSearch;
	cout<<"Nhap id sach can tim kiem: ";
	getline(cin >> ws,isbnSearch);
	bool find = false;
	
	for (int i = 0; i < size; i++){
		if (A[i][0] == isbnSearch){
			find = true;
			cout<<"Tim sach: \n";
			cout<<A[i][0]<<" | "<<A[i][1]<<" | "<<A[i][2]<<" | "<<A[i][3]<<" | "
				<<A[i][4]<<" | "<<A[i][5]<<" | "<<A[i][6]<<" | "<<A[i][7]<<endl;
			break;
		}
	}
	if (!find){
		cout<<"Sach ma so "<<isbn<<" khong duoc tim thay.\n";
	}
}
const maxsize = 100;
//Ham them sach
void addBook(string A[][8], int &size){
	if (size >= maxsize){
		cout<<"Error.Thu vien da day sach.Khong the them sach.\n";
		return;
	}
	string isbn, title, subject, author, publisher, date;
	int pages, copies;
	cout<<"Nhap id sach: ";
	getline(cin,isbn);
	
	cout<<"Nhap tieu de: ";
	getline(cin, title);
	
	cout<<"Nhap chu de: ";
	getline(cin, subject);
	
	cout << "Nhap ten tac gia: ";
    getline(cin, author);

    cout << "Nhap ten nah xuat ban: ";
    getline(cin, publisher);

    cout << "Nhap ngay thang nam xuat ban: ";
    getline(cin, date);

    cout << "Nhap so trang: ";
    getline(cin, pages);

    cout << "Nhap so ban sao: ";
    getline(cin, copies);
    
    A[size][0] = isbn;
    A[size][1] = title;
    A[size][2] = subject;
    A[size][3] = author;
    A[size][4] = publisher;
    A[size][5] = date;
    A[size][6] = pages;
    A[size][7] = copies;
    
    size++;
    cout<<"Sach da duoc them thanh cong.\n";
}
//Ham xoa sach
void deleteBook(string A[][8], int size){
	if (size == 0){
		cout<<"Error.Thu vien trong.Khong the xoa sach.\n";
		return;
	}
	cout<<"Danh sach hien co:\n";
	for (int i = 0; i < size; i++){
		cout<<A[i][0]<<" | "<<A[i][1]<<" | "<<A[i][2]<<" | "<<A[i][3]<<" | "
			<<A[i][4]<<" | "<<A[i][5]<<" | "<<A[i][6]<<" | "<<A[i][7]<<endl;
	}
	string isbnDelete;
	cout<<"Nhap id sach can xoa: ";
	getline(cin >> ws,isbnDelete);
	int indexDelete = -1;
	for (int i = 0; i < size; i++){
		if (A[i][0] == isbnDelete){
			indexDelete = i;
			break;
		}
	}
	if (indexDelete != -1){
		for (int i = indexDelete; i < size - 1; i++){
			for (int j = 0; j < 8; j++){
				A[i][j] = A[i + 1][j];
			}
		}
		size--;
		cout<<"Sach ma so "<<isbnDelete<<" duoc xoa thanh cong.\n";
	}else{
		cout<<"Sach ma so "<<isbnDelete<<" khong tim thay.Khong the xoa.\n";
	}
}
int main()
{
	
	return 0;
}
