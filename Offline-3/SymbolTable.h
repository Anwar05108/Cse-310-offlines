#include <string>
using namespace std;
#include "ScopeTable.h"
// #include "SymbolInfo.cpp"

class SymbolTable
{
private:
    ScopeTable *scopeTable;
public:
    SymbolTable(int);
    ~SymbolTable();
    bool insert(string, string);
    bool deletef(string);
    void enterScope( int );
    void exitScope();
    SymbolInfo* search(string);
    void printCurrentScope();
    void printAllScopes();
    ScopeTable* getParentScope();
    ScopeTable* getScopeTable();
    void printAllScopesInFile(FILE *);
};