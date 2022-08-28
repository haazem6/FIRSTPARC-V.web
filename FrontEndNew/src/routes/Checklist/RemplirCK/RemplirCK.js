import React, { useState, useEffect } from 'react';
import { Container, Row, Button } from 'react-bootstrap';
import TableTypeCK from './RemplirTableCK';
import axios from 'axios';
import DatePicker from 'react-datepicker';
import "react-datepicker/dist/react-datepicker.css";
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';
import { Contenuck } from '../../../api/CK/contenuck/Contenuck';
import { Typeck } from "../../../api/CK/typeck/Typeck";
import { toast } from 'react-toastify';

import { Link, BrowserRouter } from 'react-router-dom';
import {
    Modal,
    ModalHeader,
    ModalBody,
    ModalFooter,
    Form,
    FormGroup,
    Label,
    Input
  } from "reactstrap";
  import { Card, Col } from "react-bootstrap";
  import { Chauffeur } from '../../../api/Chauffeur/Chauffeur';
  import { Vehicule } from '../../../api/Vehicule/Vehicule';
  import { Filiale } from '../../../api/Filiale/Filiale';
  import { CheckList } from '../../../api/CK/CK/CK';
  import { Remorque } from '../../../api/Remorque/Remorque';
  import { EnteteCk } from '../../../api/CK/EnteteCk/EnteteCK';
  import { LigneCk } from '../../../api/CK/LigneCK/LigneCK';
function RemplirCK({}) {

  //const { getContenuCKById,removeContenu } = Contenuck();
  const { getCKbyId,removeCK } = CheckList();
  const [Contenuu, setContenuu] = useState([])
  const [startDate, setStartDate] = useState(new Date());
  const [startHeure, setStartHeure] = useState(new Date());
  const [data, setData] = useState({data: []})
  const [isLoading, setIsLoading] = useState(false);
  // const [oui,setOui]=useState([]);
  // const [non,setNon]=useState([]);
  const [err, setErr] = useState('');
  const [q, setQ] = useState(0);
  const [Contenu, setContenu] = useState( []);
  const [loading, setLoading] = useState(false);
  const [total, setTotal] = useState(0);
  const [state, setState] = useState({
    CodeDoc:undefined,
    filiale: undefined,
    vehicule: undefined,
    chauffeur: undefined,
    remorque: undefined,
    date :startDate,
    heure: startHeure,
    oui:"false",
    non:"false",
    observations:undefined
});
 
  const [reloadCKTable, setReloadCKTable] = useState(false);

  const fireGetCK = () => {
    setLoading(true);
    getCKbyId(q)
        .then((response) => {
          setContenu(response.data);
            setTotal(response.count);
            setLoading(false);
            
        }) 
        .catch(() => {
            setLoading(false);
        });
};
// const isChecked = (event) => {
  
//      if (document.getElementById("oui").checked) {
//       console.log('event.target.name', event.target.name);
//       console.log('event.target.value', event.target.value);
//       setOui("true");

//      }
//      console.log('event.target.name', event.target.name);
//      console.log('event.target.value', event.target.value);
    
// };

useEffect(() => {
    fireGetCK();
    console.log(Contenu.CK_Contenu);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [reloadCKTable]);


  // const result = Contenu.map((post) => {
  //   return { ...post, CK_Contenu: post.CK_Contenu.map((tag) => tag.designation)
  //   setContenu(result) }
  // })
  //console.log(result)
  
    const [chauffeur, setchauffeur] = useState([]);
    const [vehicule, setvehicule] = useState([]);
    const [filiale, setfiliale] = useState([]);
    const [remorque, setremorque] = useState([]);
    const [types, settypes] = useState([]);
    const { getChauffeur } = Chauffeur();
    const { getVehicule } = Vehicule();
    const { getFiliale } = Filiale();
    const { getRemorque } = Remorque();
    const { createEnteteCheckList } = EnteteCk();
    const { createLigneCheckList } = LigneCk();
   
    const { getCK } = CheckList();
    //const { getCKbyId } = CheckList();

    useEffect(() => {
      getRemorque().then((res) => {
        setremorque(res.data);
      });
      // eslint-disable-next-line react-hooks/exhaustive-deps
    }, []);
    useEffect(() => {
      getChauffeur().then((res) => {
        setchauffeur(res.data);
      });
      // eslint-disable-next-line react-hooks/exhaustive-deps
    }, []);

    useEffect(() => {
      getVehicule().then((res) => {
        setvehicule(res.data);
      });
      // eslint-disable-next-line react-hooks/exhaustive-deps
    }, []);

    useEffect(() => {
      getFiliale().then((res) => {
        setfiliale(res.data);
      });
      // eslint-disable-next-line react-hooks/exhaustive-deps
    }, []);

    useEffect(() => {
      getCK().then((res) => {
          settypes(res.data);
      });
      // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  
  const changeCredsN = (event) => {
    console.log('event.target.name', event.target.name);
    console.log('event.target.value', event.target.value);
    setState({...state, [event.target.name]: Number(event.target.value)});
};

const changeCredsS = (event) => {
    console.log('event.target.name', event.target.name);
    console.log('event.target.value', event.target.value);
    setState({...state, [event.target.name]: String(event.target.value)});
};

const changeCredsNn = (event) => {
  console.log('event.target.name', event.target.name);
  console.log('event.target.value', event.target.value);
  
};


console.log(state);
  console.log(q);
  console.log(Contenu);
  function getFormData(e)
  {
    
    e.preventDefault()

  }
  const handleRemplirCk = async () => {

    await createEnteteCheckList({
        
        Filiale: state.filiale ,
        Vehicule : state.vehicule,
        Chauffeur: state.chauffeur,
        Remorque: state.remorque,      
         Date: state.date,
         Heure: state.heure,
     
    })
    console.log(state);
    
};
const handleRemplirCKLigne = async () => {

  await createLigneCheckList({
    
      Filiale: state.filiale,
      Oui:state.oui,
      Non:state.non,
      Observations:state.observations
    
      
   
  })
  console.log(state);
  
  
};
 
    return (
        
        <Container>
          <FormGroup>
          
          <Row>
          <i className='fa fa-edit' aria-hidden="true"></i>
          <Col lg="4" sm="8">
            <Label for='exampleCheckbox'>
                    <h3>Remplir un Checklist </h3>
                </Label>
          </Col>
          </Row>
            </FormGroup>

        <Card >
            <Card.Header>
              <Card.Title as="h4">Entête </Card.Title>
            </Card.Header>
            <Card.Body className="table-full-width table-responsive">

        <Form>
          <Row>
            {/* Left col */}
            <Col>
              <FormGroup>
                <Row>
                  <Col>
                    <Label for="cause">
                      Code Doc <strong className="text-danger">*</strong>
                    </Label>
                    <Input
                      id="CodeDoc"
                      name="CodeDoc"
                      type="text"
                      required
                      placeholder="Code"
                      onChange={(event) => changeCredsN(event)}
                    />
                  </Col>

                  <Col>
                    <Label for="filiale">
                      Filiale <strong className="text-danger">*</strong>
                    </Label>
                    <Input
                      id="filiale"
                      name="filiale"
                      type="select"
                      onChange={(event) => changeCredsN(event)}
                      required
                      
                    >
                      <option>Fait votre choix...</option>
                      {filiale.map(({ CodeFilial, DesignationFilial }) => {
                                return (
                                    <option key={CodeFilial} value={CodeFilial}>
                                        {CodeFilial}
                                    </option>
                                );
                            })}
                    </Input>
                  </Col>
                  <Col>
                    <Label for="vehicule">
                      Véhicule <strong className="text-danger">*</strong>
                    </Label>
                    <Input
                      id="vehicule"
                      name="vehicule"
                      type="select"
                      onChange={(event) => changeCredsS(event)}
                      required
                      
                    >
                      <option>Fait votre choix...</option>
                      {vehicule.map(({ ImmatriculationVeh }) => {
                                return (
                                    <option key={ImmatriculationVeh} value={ImmatriculationVeh}>
                                        {ImmatriculationVeh}
                                    </option>
                                );
                            })}
                    </Input>
                  </Col>
                  <Col>
                    <Label for="chauffeur">
                      Chauffeur <strong className="text-danger">*</strong>
                    </Label>
                    <Input
                      id="chauffeur"
                      name="chauffeur"
                      type="select"
                      onChange={(event) => changeCredsS(event)}
                      required
                      
                    >
                      <option>Fait votre choix...</option>
                      {chauffeur.map(({ MatriculeC, PrenomC }) => {
                                return (
                                    <option key={MatriculeC} value={MatriculeC}>
                                        {MatriculeC}
                                    </option>
                                );
                            })}
                    </Input>
                  </Col>
                </Row>
              </FormGroup>
              <FormGroup>
              <Row>
                   <Col>
                    <Label for="date">
                      Date  <strong className="text-danger">*</strong>
                    </Label>
                    <DatePicker
                      id="date"
                      name="date"
                      dateFormat="dd/MM/yyyy"
                      selected={startDate} 
                      onChange={(date) => setStartDate(date)}
                      required
                    />
                  </Col>
                  <Col>
                    <Label for="heure">
                      Heure<strong className="text-danger">*</strong>
                    </Label>
                    <DatePicker
                    id="heure"
                    name="heure"
                    selected={startDate}
                    onChange={(date) => setStartHeure(date)}
                    showTimeSelect
                    showTimeSelectOnly
                    timeIntervals={15}
                    timeCaption="Heure"
                    dateFormat="hh:mm aa"
                  />
                  </Col> 
                  <Col>
                    <Label for="remorque">
                      Remorque <strong className="text-danger">*</strong>
                    </Label>
                    <Input
                      id="remorque"
                      name="remorque"
                      type="select"
                      onChange={(event) => changeCredsS(event)}
                      required
                      
                    >
                      <option>Fait votre choix...</option>
                      {remorque.map(({MatriculeRem, NChassisRem }) => {
                                return (
                                    <option key={MatriculeRem} value={MatriculeRem}>
                                        {MatriculeRem}
                                    </option>
                                );
                            })}
                    </Input>
                  </Col>
                </Row>
              </FormGroup>
              <FormGroup>
                <Row>
                  <Col>
                    <Label for="CodeCK">
                    CodeCK<strong className="text-danger">*</strong>
                    </Label>
                    <Input
                      id="CodeCK"
                      name="CodeCK"
                      type="select"
                      onChange={(e) => setQ(e.target.value)}
                      value={q}
                      required
                      
                    >
                      <option>Fait votre choix...</option>
                      {types.map(({ CodeCK }) => {
                                return (
                                    <option key={CodeCK} value={CodeCK}>
                                        {CodeCK}
                                    </option>
                                );
                            })}
                    </Input>
                  </Col>
                </Row>
              </FormGroup>
              <FormGroup>
                <Row>
                  <Col>
                  <button  type='button' className='btn btn-primary rounded mt-3' onClick={fireGetCK} >
                  <i className="fa fa-eye" aria-hidden="true" > </i>

                          Afficher
                    </button>
           

                  
                  </Col>
                </Row>
               </FormGroup>
              </Col>
              </Row>
        </Form>
        </Card.Body>
        </Card>

        <Row>
            <Col md="12">
            <Card className="strpied-tabled-with-hover">
                    <Card.Header>
                    <Card.Title as="h4">Lignes </Card.Title>
                    </Card.Header>

                    <Card.Body className="table-full-width table-responsive">
                      {/* {JSON.stringify(data, null, 4)}  */}
  
                      <TableContainer component={Paper}>
      <Table sx={{ minWidth: 650 }} aria-label="simple table">
        <TableHead>
          <TableRow>
          
            <TableCell>Contenu</TableCell>
            <TableCell>Oui</TableCell>
            <TableCell>Non</TableCell>
            <TableCell>observation</TableCell>

            {/* <TableCell align="right">CodeCK_Contenu</TableCell> */}
           
          
          </TableRow>
        </TableHead>
        <TableBody>
          {Contenu.map((contenu) => (

              <TableRow
              key={Contenu.CodeCK_Contenu}
              sx={{ '&:last-child td, &:last-child th': { border: 0 } }}>
            <TableCell component="th" scope="Contenu">{contenu.CK_Contenu.Designation}</TableCell> 
          
           <TableCell  name="report_myTextEdit"    >
            <input type="checkbox"  
            value="true"
            id="oui" name="oui"
                   //onChange={(event) => changeCredsS(event)}
                   onClick={(event) => changeCredsS(event)}/>
                   
            </TableCell>
           
           <TableCell  name="report_myTextEditBoxnon" onChange={(event) => changeCredsS(event)} >
            <input type="checkbox"  //onChange={(event) => changeCredsS(event)}
            onClick={(event) => changeCredsS(event)}
            value="false"
            id="non"
            name="non"/></TableCell>
           
           <TableCell name="report_myTextEditBox" >
            <input type="file"   
                   id="observations"
                   name="observations"
                   onChange={(event) => changeCredsS(event)}
                   required/></TableCell>
              {/* <TableCell >{contenu.CK_Contenu.CodeCK_Contenu}</TableCell>    */}
          </TableRow>

            
            
              
              
              
        
         
          ))}





        </TableBody>
      </Table>
    </TableContainer>
                    
                    </Card.Body>
            </Card>
            </Col>
         </Row>
              
         <Card >
            
              <Card.Body className="table-full-width table-responsive">
            
                  <Button className='btn btn-danger rounded mt-3' onClick={handleRemplirCKLigne}>
                  - Annuler
                  </Button>

                  <Button className='btn btn-success rounded mt-3' onClick={handleRemplirCk}>
                  + Valider
                  </Button>
              
              </Card.Body>
             
          </Card>
            
        
             
         
  
        </Container>
    );
}
export default RemplirCK;
