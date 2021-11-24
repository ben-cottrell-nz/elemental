import QtQuick 2.15
import QtQuick.Layouts 1.15
import "data.js" as Data

Item {
    id: cells
    property real cellWidth: width / 19
    property real cellHeight: height / 9
    function filter(queryStr) {
        for (var e in Data.elementsData) {

        }
    }

    /*
static const vector<vector<string>> elemSymbols = {
        ["H",  "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "He"],
        ["Li", "Be", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "B",  "C",  "N",  "O",  "F",  "Ne"],
        ["Na", "Mg", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "Al", "Si", "P",  "S",  "Cl", "Ar"],
        ["K",  "Ca", "Sc", "Ti", "V",  "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "As", "Se", "Br", "Kr"],
        ["Rb", "Sr", "Y",  "Zr", "Nb", "Mo", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", "Sb", "Te", "I",  "Xe"],
        ["Cs", "Ba", "\t", "Hf", "Ta", "W",  "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl", "Pb", "Bi", "Po", "At", "Rn"],
        ["Fr", "Ra", "\t", "Rf", "Db", "Sg", "Bh", "Hs", "Mt", "Ds", "Rg", "Cn", "Nh", "Fl", "Mc", "Lv", "Ts", "Og"],
        ["\t", "\t", "\t", "La", "Ce", "Pr", "Nd", "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu"],
        ["\t", "\t", "\t", "Ac", "Th", "Pa", "U",  "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm", "Md", "No", "Lr"]
};
*/
    property var elems : [
    ["H",  "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "He"],
    ["Li", "Be", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "B",  "C",  "N",  "O",  "F",  "Ne"],
    ["Na", "Mg", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "\t", "Al", "Si", "P",  "S",  "Cl", "Ar"],
    ["K",  "Ca", "Sc", "Ti", "V",  "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "As", "Se", "Br", "Kr"],
    ["Rb", "Sr", "Y",  "Zr", "Nb", "Mo", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", "Sb", "Te", "I",  "Xe"],
    ["Cs", "Ba", "\t", "Hf", "Ta", "W",  "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl", "Pb", "Bi", "Po", "At", "Rn"],
    ["Fr", "Ra", "\t", "Rf", "Db", "Sg", "Bh", "Hs", "Mt", "Ds", "Rg", "Cn", "Nh", "Fl", "Mc", "Lv", "Ts", "Og"],
    ["\t", "\t", "\t", "La", "Ce", "Pr", "Nd", "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu"],
    ["\t", "\t", "\t", "Ac", "Th", "Pa", "U",  "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm", "Md", "No", "Lr"]
    ];
    property var highlighted : [
        [true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true],
        [true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true],
        [true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true],
        [true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true],
        [true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true],
        [true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true],
        [true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true],
        [true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true],
        [true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true],
    ]
    Column {
    Repeater {
        //rows
        id: rows
        model: 9
        delegate: Row {
            property var r : index
            //columns
            Repeater {
                model: 18
                id: cols
                delegate: TableCell { elem: elems[r][index];
                    num: Data.elementsData[elems[r][index]].Cell[0]
                    backgroundColor: "#" + (Data.elementsData[elems[r][index]].Cell[4].length > 0 ?
                                                Data.elementsData[elems[r][index]].Cell[4] :
                                                "2c2c2c")
                    width: cellWidth
                    height: cellHeight }
            }
        }
    }
    }
}
