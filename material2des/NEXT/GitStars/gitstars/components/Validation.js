import React, { useEffect, useState } from "react";
import { InputText } from "primereact/inputtext";
import { Button } from "primereact/button";
import { Dropdown } from "primereact/dropdown";
import { Password } from "primereact/password";
import { Dialog } from "primereact/dialog";
import { Divider } from "primereact/divider";


export default function Validation() {
  

  return (
    <>
      <div className="form-demo">
        <div className="flipbutton">
          <button className="btnflip">
            &#10145;
          </button>
        </div>
        <div className="card-inner">
          <div className="card-front">
            
            <div className="flex justify-content-center">
              <div className="card">
                <form  className="p-fluid">
                  <div className="field gitImgContainer flex align-items-center justify-content-center border-circle">
                    
                  </div>

                  {/* name field */}
                  <div className="field">
                    <span className="p-float-label">
                      <InputText
                        id="name"
                        name="name"
                       
                        autoFocus
                      />
                      <label htmlFor="name">Name*</label>
                    </span>
                  </div>
                  {/* end name field */}

                  {/* email field */}
                  <div className="field">
                    <span className="p-float-label p-input-icon-right">
                      <i className="pi pi-envelope" />
                      <InputText
                        id="email"
                        name="email"
                        
                      />
                      <label htmlFor="email">Email*</label>
                    </span>
                  </div>
                  {/* end email field */}

                  {/* password field */}
                  <div className="field">
                    <span className="p-float-label">
                      <Password
                        id="password"
                        name="password"
                        
                        toggleMask
                        
                      />
                      <label htmlFor="password">Password*</label>
                    </span>
                  </div>
                  {/* end password field */}

                  {/* github field */}
                  <div className="field">
                    <span className="p-float-label">
                      <InputText
                        id="github"
                        name="github"
                       
                        autoFocus
                      />
                      <label htmlFor="github">Github*</label>
                    </span>
                  </div>
                  {/* end github field */}

                  {/* repositories field */}
                  <div className="field">
                    <span className="p-float-label">
                      <Dropdown
                        id="repositories"
                        name="repositories"
                   
                        optionLabel="name"
                      />
                      <label htmlFor="repositories">Seus Repositórios</label>
                    </span>
                  </div>
                  {/* end repositories field */}

                  <Button
                    type="submit"
                    label="Salvar"
                    className="mt-2 btnSbmt"
                  />
                </form>
              </div>
            </div>
          </div>
          <div className="card-back">
            <div className="field gitImgContainer flex align-items-center justify-content-center border-circle">
             
            </div>
            <div className="backName">
              <h4>Nome:</h4> <span></span>
            </div>
            <div className="backName">
              <h4>Repositórios:</h4> <span></span>
            </div>
            <div className="backName">
              <h4>Usuário desde:</h4> <span></span>
            </div>
            <div className="backName">
              <h4>Seguidores:</h4> <span></span>
            </div>
            <div className="backName">
              <h4>Seguindo:</h4> <span></span>
            </div>
           
          </div>
        </div>
      </div>

      {/* STYLE OF COMPONENT */}
      <style jsx>{`
        
      `}</style>
    </>
  );
}
